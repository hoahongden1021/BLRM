import json, pathlib, sys
sys.stdout.reconfigure(encoding='utf-8',errors='strict')
path=pathlib.Path('runtime/agent/ocr/rapidocr_latest.json')
with path.open('r',encoding='utf-8') as f:
    data=json.load(f)
classification=data.get('classification',{})
items=data.get('items',[])
start_item=[i for i in items if i.get('text')=='开始游戏']
start_item=start_item[0] if start_item else None
lines=["COMMANDS:",
"CLASSIFICATION: %s"%json.dumps(classification,ensure_ascii=False,indent=2),
"ITEM_COUNT=%d"%len(items),]
if start_item:
    lines.append("START_ITEM: %s"%json.dumps(start_item,ensure_ascii=False,indent=2))
    lines.append("TEXT=%s"%start_item.get('text'))
    lines.append("SCORE=%f"%start_item.get('score'))
    lines.append("BOX=%s"%start_item.get('box'))
else:
    lines.append("START_ITEM not found")
lines.append("TOUCH_COORDS=TODO")
lines.append("ERRORS=none")
lines.append("FINAL_STATE=UNKNOWN")
report_path=pathlib.Path('runtime/agent/reports/last_agent_result.txt')
report_path.parent.mkdir(parents=True,exist_ok=True)
report_path.write_text('\n'.join(lines),encoding='utf-8')
print(report_path.read_text(encoding='utf-8'))

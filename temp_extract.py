import json, pathlib
f=pathlib.Path('runtime/agent/ocr/rapidocr_latest.json')
d=json.load(f)
items=[i for i in d.get('items',[]) if i.get('text')=='开始游戏']
print('matches',len(items))
if items:
    item=items[0]
    print('item',item)
    box=item['box']
    xs=[p[0] for p in box]
    ys=[p[1] for p in box]
    cx=sum(xs)/4
    cy=sum(ys)/4
    print('center_float',cx,cy)
    print('tap',int(round(cx)),int(round(cy)))
else:
    print('no match')

# GPT-20B handoff to Codex

At the end of **each GPT-20B task**, the local agent must create a UTF-8 file
`loggpt/_current.md` containing the actual session results. Include:

1. task and start/end time;
2. base commit, files changed, and a concise account of each change;
3. concrete source evidence with paths/methods and VERIFIED/PARTIAL/CANDIDATE/UNKNOWN;
4. commands run and their real results; if a test was not run, say so;
5. unresolved blockers and the exact next task for Codex to prepare.

Never include passwords, access tokens, private keys or raw packet payloads that
contain credentials. If the GPT application can export its complete session
transcript, the agent may instead provide that UTF-8 file path to the BAT script;
otherwise `_current.md` is the required technical session log. The BAT script
cannot extract conversation history from an unspecified GPT application.

After writing the log, run from the repository root:

```bat
cmd /c .\99_agent_handoff.bat
cmd /c .\99_gpt20_publish.bat
```

For an exported UTF-8 transcript in a different file:

```bat
cmd /c .\99_gpt20_publish.bat "C:\absolute\path\session.txt"
```

The publisher commits/pushes **all** tracked changes plus nonignored new files
to `origin` on the current branch, including the new session log and deletions
of older logs. It keeps the **two newest** handoff logs in `loggpt/` in the
current checkout. Old Git commits still contain historical logs; this script
does not rewrite history. The log is limited to 2 MiB to keep repository growth
bounded per session. Files excluded by `.gitignore` are not included by Git.

Only report the task as published when the command prints `PUSH_OK`, `BRANCH`,
`LATEST_LOG` and `LOG_COUNT=2` (the first session may report `LOG_COUNT=1`). If
commit or push failed after the log was prepared, correct the error and run
`cmd /c .\99_gpt20_publish.bat --retry`. Do not claim the remote is updated
after `PUBLISH_FAILED`; the GitHub copy may still contain an earlier session.

When the user later says **“xử lí”**, Codex should find the newest successful
`gpt20: publish session` commit in `hoahongden1021/BLRM`, read its `loggpt/`
handoff log and the changed files, then give the user one next prompt for GPT-20B
that ends by writing the next `_current.md` and running this publisher.

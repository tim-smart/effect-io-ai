Package: `effect`<br />
Module: `ChildProcess`<br />

## ChildProcess.PipeFromOption

Specifies which stream to pipe from the source subprocess.

- `"stdout"`: Pipe stdout from the source (default)
- `"stderr"`: Pipe stderr from the source
- `"all"`: Pipe both stdout and stderr interleaved
- `` `fd${number}` ``: Pipe from a custom file descriptor (e.g., `"fd3"`)

**Signature**

```ts
type PipeFromOption = "stdout" | "stderr" | "all" | `fd${number}`
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcess.ts#L120)

Since v4.0.0
Package: `effect`<br />
Module: `ChildProcess`<br />

## ChildProcess.PipeToOption

Specifies which input to pipe to on the destination subprocess.

- `"stdin"`: Pipe to stdin of the destination (default)
- `` `fd${number}` ``: Pipe to a custom file descriptor (e.g., `"fd3"`)

**Signature**

```ts
type PipeToOption = "stdin" | `fd${number}`
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcess.ts#L131)

Since v4.0.0
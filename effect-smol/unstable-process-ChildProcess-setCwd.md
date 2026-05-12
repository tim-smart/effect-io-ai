Package: `effect`<br />
Module: `ChildProcess`<br />

## ChildProcess.setCwd

Set the current working directory for a command.

For pipelines, applies to each command in the pipeline.

**Example**

```ts
import { ChildProcess } from "effect/unstable/process"

const cmd = ChildProcess.make`ls -la`.pipe(
  ChildProcess.setCwd("/tmp")
)
```

**Signature**

```ts
declare const setCwd: { (cwd: string): (self: Command) => Command; (self: Command, cwd: string): Command; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcess.ts#L768)

Since v4.0.0
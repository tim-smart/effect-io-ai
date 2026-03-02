Package: `effect`<br />
Module: `ChildProcess`<br />

## ChildProcess.setEnv

Set environment variables for a command.

For pipelines, applies to each command in the pipeline.

**Example**

```ts
import { ChildProcess } from "effect/unstable/process"

const cmd = ChildProcess.make`node script.js`.pipe(
  ChildProcess.setEnv({ NODE_ENV: "test" })
)
```

**Signature**

```ts
declare const setEnv: { (env: Record<string, string>): (self: Command) => Command; (self: Command, env: Record<string, string>): Command; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcess.ts#L805)

Since v4.0.0
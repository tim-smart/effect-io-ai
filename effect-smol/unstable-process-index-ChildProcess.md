Package: `effect`<br />
Module: `index`<br />

## index.ChildProcess

Re-exports all named exports from the "./ChildProcess.ts" module as `ChildProcess`.

**Example**

```ts
import { NodeServices } from "@effect/platform-node"
import { Effect, Stream } from "effect"
import { ChildProcess } from "effect/unstable/process"

// Build a command
const command = ChildProcess.make`echo "hello world"`

// Spawn and collect output
const program = Effect.gen(function*() {
  // You can `yield*` a command, which calls `ChildProcess.spawn`
  const handle = yield* command
  const chunks = yield* Stream.runCollect(handle.stdout)
  const exitCode = yield* handle.exitCode
  return { chunks, exitCode }
}).pipe(Effect.scoped, Effect.provide(NodeServices.layer))

// With options
const withOptions = ChildProcess.make({ cwd: "/tmp" })`ls -la`

// Piping commands
const pipeline = ChildProcess.make`cat package.json`.pipe(
  ChildProcess.pipeTo(ChildProcess.make`grep name`)
)

// Spawn the pipeline
const pipelineProgram = Effect.gen(function*() {
  const handle = yield* pipeline
  const chunks = yield* Stream.runCollect(handle.stdout)
  return chunks
}).pipe(Effect.scoped, Effect.provide(NodeServices.layer))
```

**Signature**

```ts
export * as ChildProcess from "./ChildProcess.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L49)

Since v4.0.0
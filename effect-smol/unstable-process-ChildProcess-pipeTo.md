Package: `effect`<br />
Module: `ChildProcess`<br />

## ChildProcess.pipeTo

Pipe the output of one command to the input of another.

By default, pipes `stdout` from the source to `stdin` of the destination.
Use the `options` parameter to customize which streams are connected.

**Example**

```ts
import { ChildProcess } from "effect/unstable/process"

// Pipe stdout (default)
const pipeline1 = ChildProcess.make`cat file.txt`.pipe(
  ChildProcess.pipeTo(ChildProcess.make`grep pattern`)
)

// Pipe stderr instead of stdout
const pipeline2 = ChildProcess.make`my-program`.pipe(
  ChildProcess.pipeTo(ChildProcess.make`grep error`, { from: "stderr" })
)

// Pipe combined stdout and stderr
const pipeline3 = ChildProcess.make`my-program`.pipe(
  ChildProcess.pipeTo(ChildProcess.make`tee output.log`, { from: "all" })
)
```

**Signature**

```ts
declare const pipeTo: { (that: Command, options?: PipeOptions): (self: Command) => PipedCommand; (self: Command, that: Command, options?: PipeOptions): PipedCommand; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcess.ts#L678)

Since v4.0.0
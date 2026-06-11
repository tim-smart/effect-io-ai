Package: `effect`<br />
Module: `ChildProcess`<br />

## ChildProcess.PipeOptions

Options for controlling how commands are piped together.

**Example** (Piping stderr between commands)

```ts
import { ChildProcess } from "effect/unstable/process"

// Pipe stderr instead of stdout
const pipeline = ChildProcess.make`my-program`.pipe(
  ChildProcess.pipeTo(ChildProcess.make`grep error`, { from: "stderr" })
)
```

**Signature**

```ts
export interface PipeOptions {
  /**
   * Which stream to pipe from the source subprocess.
   *
   * **Details**
   *
   * - `"stdout"` (default): Pipe stdout from the source
   * - `"stderr"`: Pipe stderr from the source
   * - `"all"`: Pipe both stdout and stderr interleaved
   * - `"fd3"`, `"fd4"`, etc.: Pipe from a custom file descriptor
   */
  readonly from?: PipeFromOption | undefined

  /**
   * Which input to pipe to on the destination subprocess.
   *
   * **Details**
   *
   * - `"stdin"` (default): Pipe to stdin of the destination
   * - `"fd3"`, `"fd4"`, etc.: Pipe to a custom file descriptor
   */
  readonly to?: PipeToOption | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcess.ts#L120)

Since v4.0.0
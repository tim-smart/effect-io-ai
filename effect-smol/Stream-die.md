Package: `effect`<br />
Module: `Stream`<br />

## Stream.die

The stream that dies with the specified defect.

**Example**

```ts
import { Cause, Console, Effect, Exit, Stream } from "effect"

const defect = new Error("Boom")
const stream = Stream.die(defect)

const program = Effect.gen(function*() {
  const exit = yield* Effect.exit(Stream.runCollect(stream))
  const message = Exit.match(exit, {
    onSuccess: () => "Exit.Success",
    onFailure: (cause) => {
      const reason = cause.reasons[0]
      const defect = Cause.isDieReason(reason) ? String(reason.defect) : "Unexpected reason"
      return `Exit.Failure(${defect})`
    }
  })
  yield* Console.log(message)
})

Effect.runPromise(program)
// Output: Exit.Failure(Error: Boom)
```

**Signature**

```ts
declare const die: (defect: unknown) => Stream<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L912)

Since v2.0.0
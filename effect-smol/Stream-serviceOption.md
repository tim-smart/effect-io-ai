Package: `effect`<br />
Module: `Stream`<br />

## Stream.serviceOption

Optionally accesses a service from the context and emits the result as a
single element.

**Example**

```ts
import { Effect, Option, Context, Stream } from "effect"

class Greeter extends Context.Service<Greeter, {
  readonly greet: (name: string) => string
}>()("Greeter") {}

const stream = Stream.serviceOption(Greeter).pipe(
  Stream.map((maybeGreeter) =>
    Option.match(maybeGreeter, {
      onNone: () => "No greeter",
      onSome: (greeter) => greeter.greet("World")
    })
  )
)

const program = Effect.gen(function*() {
  return yield* stream.pipe(
    Stream.provideService(Greeter, {
      greet: (name) => `Hello, ${name}!`
    }),
    Stream.runCollect
  )
})

Effect.runPromise(program)
// Output: [ "Hello, World!" ]
```

**Signature**

```ts
declare const serviceOption: <I, S>(service: Context.Key<I, S>) => Stream<Option.Option<S>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L427)

Since v4.0.0
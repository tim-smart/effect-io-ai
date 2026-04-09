Package: `effect`<br />
Module: `Stream`<br />

## Stream.service

Accesses a service from the context and emits it as a single element.

**Example**

```ts
import { Effect, Context, Stream } from "effect"

class Greeter extends Context.Service<Greeter, {
  readonly greet: (name: string) => string
}>()("Greeter") {}

const stream = Stream.service(Greeter).pipe(
  Stream.map((greeter) => greeter.greet("World"))
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
declare const service: <I, S>(service: Context.Key<I, S>) => Stream<S, never, I>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L388)

Since v4.0.0
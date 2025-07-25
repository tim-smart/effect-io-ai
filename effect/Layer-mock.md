Package: `effect`<br />
Module: `Layer`<br />

## Layer.mock

Creates a mock layer for testing purposes. You can provide a partial
implementation of the service, and any methods not provided will
throw an `UnimplementedError` defect when called.

**Example**

```ts
import { Context, Effect, Layer } from "effect"

class MyService extends Context.Tag("MyService")<
  MyService,
  {
    one: Effect.Effect<number>
    two(): Effect.Effect<number>
  }
>() {}

const MyServiceTest = Layer.mock(MyService, {
  two: () => Effect.succeed(2)
})
```

**Signature**

```ts
declare const mock: { <I, S extends object>(tag: Context.Tag<I, S>): (service: PartialEffectful<S>) => Layer<I>; <I, S extends object>(tag: Context.Tag<I, S>, service: PartialEffectful<S>): Layer<I>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L450)

Since v3.17.0
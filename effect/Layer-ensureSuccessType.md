Package: `effect`<br />
Module: `Layer`<br />

## Layer.ensureSuccessType

A no-op type constraint that enforces the success channel of a Layer conforms to
the specified success type `ROut`.

**Example**

```ts
import { Layer } from "effect"

// Ensure that the layer produces the expected services.
const program = Layer.succeed(MyService, new MyServiceImpl()).pipe(Layer.ensureSuccessType<MyService>())
```

**Signature**

```ts
declare const ensureSuccessType: <ROut>() => <ROut2 extends ROut, E, RIn>(layer: Layer<ROut2, E, RIn>) => Layer<ROut2, E, RIn>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L1247)

Since v3.20.0
Package: `effect`<br />
Module: `Layer`<br />

## Layer.ensureRequirementsType

A no-op type constraint that enforces the requirements channel of a Layer conforms to
the specified requirements type `RIn`.

**Example**

```ts
import { Layer } from "effect"

// Ensure that the layer does not have any requirements.
const program = Layer.succeed(MyService, new MyServiceImpl()).pipe(Layer.ensureRequirementsType<never>())
```

**Signature**

```ts
declare const ensureRequirementsType: <RIn>() => <ROut, E, RIn2 extends RIn>(layer: Layer<ROut, E, RIn2>) => Layer<ROut, E, RIn2>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L1279)

Since v3.20.0
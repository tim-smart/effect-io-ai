Package: `effect`<br />
Module: `Layer`<br />

## Layer.ensureErrorType

A no-op type constraint that enforces the error channel of a Layer conforms to
the specified error type `E`.

**Example**

```ts
import { Layer } from "effect"

// Ensure that the layer does not expose any unhandled errors.
const program = Layer.succeed(MyService, new MyServiceImpl()).pipe(Layer.ensureErrorType<never>())
```

**Signature**

```ts
declare const ensureErrorType: <E>() => <ROut, E2 extends E, RIn>(layer: Layer<ROut, E2, RIn>) => Layer<ROut, E2, RIn>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L1263)

Since v3.20.0
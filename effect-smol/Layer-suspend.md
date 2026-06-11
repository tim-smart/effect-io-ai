Package: `effect`<br />
Module: `Layer`<br />

## Layer.suspend

Constructs a layer lazily using the specified factory.

**Details**

The factory is evaluated only when the suspended layer is first built, and
the result is memoized with normal layer sharing semantics.

**Example** (Choosing a layer lazily)

```ts
import { Context, Layer } from "effect"

class Config extends Context.Service<Config, string>()("Config") {}

const useProd = true

const layer = Layer.suspend(() =>
  useProd
    ? Layer.succeed(Config, "https://api.example.com")
    : Layer.succeed(Config, "http://localhost:3000")
)
```

**Signature**

```ts
declare const suspend: <A, E, R>(evaluate: LazyArg<Layer<A, E, R>>) => Layer<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1091)

Since v2.0.0
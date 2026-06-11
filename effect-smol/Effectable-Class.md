Package: `effect`<br />
Module: `Effectable`<br />

## Effectable.Class

Provides an abstract class that can be extended to create an `Effect`.

**When to use**

Use as an abstract base class to define custom classes whose instances behave
as `Effect` values.

**See**

- `Prototype` for a lower-level primitive approach to creating custom Effect-like values without a class

**Signature**

```ts
declare class Class<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effectable.ts#L66)

Since v2.0.0
Package: `effect`<br />
Module: `Micro`<br />

## Micro.die

Creates a `Micro` effect that will die with the specified error.

This results in a `Die` variant of the `MicroCause` type, where the error is
not tracked at the type level.

**Signature**

```ts
declare const die: (defect: unknown) => Micro<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L970)

Since v3.4.0
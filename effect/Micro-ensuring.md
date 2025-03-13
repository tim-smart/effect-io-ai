Package: `effect`<br />
Module: `Micro`<br />

## Micro.ensuring

Regardless of the result of the this `Micro` effect, run the finalizer effect.

**Signature**

```ts
declare const ensuring: { <XE, XR>(finalizer: Micro<void, XE, XR>): <A, E, R>(self: Micro<A, E, R>) => Micro<A, E | XE, R | XR>; <A, E, R, XE, XR>(self: Micro<A, E, R>, finalizer: Micro<void, XE, XR>): Micro<A, E | XE, R | XR>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L3498)

Since v3.4.0
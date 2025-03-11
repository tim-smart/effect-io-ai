## orDie

Elevate any expected errors of the given `Micro` effect to unexpected errors,
resulting in an error type of `never`.

**Signature**

```ts
declare const orDie: <A, E, R>(self: Micro<A, E, R>) => Micro<A, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2872)

Since v3.4.0
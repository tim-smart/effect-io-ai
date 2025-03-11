## asSome

Wrap the success value of this `Micro` effect in a `Some`.

**Signature**

```ts
declare const asSome: <A, E, R>(self: Micro<A, E, R>) => Micro<Option.Option<A>, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1271)

Since v3.4.0
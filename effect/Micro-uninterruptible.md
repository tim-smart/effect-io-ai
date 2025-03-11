## uninterruptible

Flag the effect as uninterruptible, which means that when the effect is
interrupted, it will be allowed to continue running until completion.

**Signature**

```ts
declare const uninterruptible: <A, E, R>(self: Micro<A, E, R>) => Micro<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L3637)

Since v3.4.0
## interruptible

Flag the effect as interruptible, which means that when the effect is
interrupted, it will be interrupted immediately.

**Signature**

```ts
declare const interruptible: <A, E, R>(self: Micro<A, E, R>) => Micro<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L3665)

Since v3.4.0
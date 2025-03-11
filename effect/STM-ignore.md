## ignore

Returns a new effect that ignores the success or failure of this effect.

**Signature**

```ts
declare const ignore: <A, E, R>(self: STM<A, E, R>) => STM<void, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1131)

Since v2.0.0
## ignore

Ignore any expected errors of the given `Micro` effect, returning `void`.

**Signature**

```ts
declare const ignore: <A, E, R>(self: Micro<A, E, R>) => Micro<void, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2896)

Since v3.4.0
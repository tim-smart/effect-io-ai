## isFailure

Returns `true` if the specified `Exit` is a `Failure`, `false` otherwise.

**Signature**

```ts
declare const isFailure: <A, E>(self: Exit<A, E>) => self is Failure<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L94)

Since v2.0.0
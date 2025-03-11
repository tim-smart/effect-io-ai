## isParallel

Returns `true` if the specified `ExecutionStrategy` is an instance of
`Sequential`, `false` otherwise.

**Signature**

```ts
declare const isParallel: (self: ExecutionStrategy) => self is Parallel
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ExecutionStrategy.ts#L90)

Since v2.0.0
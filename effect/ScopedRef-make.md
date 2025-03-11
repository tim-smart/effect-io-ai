## make

Creates a new `ScopedRef` from the specified value. This method should
not be used for values whose creation require the acquisition of resources.

**Signature**

```ts
declare const make: <A>(evaluate: LazyArg<A>) => Effect.Effect<ScopedRef<A>, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ScopedRef.ts#L101)

Since v2.0.0
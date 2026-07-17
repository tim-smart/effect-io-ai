Package: `effect`<br />
Module: `Persistable`<br />

## Persistable.TimeToLiveFn

Computes the time to live for a persisted result from the result `Exit` and
request value.

**Signature**

```ts
type TimeToLiveFn<K> = (exit: Exit.Exit<Success<K>, Error<K>>, request: K) => Duration.Input
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Persistable.ts#L128)

Since v4.0.0
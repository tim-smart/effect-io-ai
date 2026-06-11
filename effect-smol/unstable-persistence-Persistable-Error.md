Package: `effect`<br />
Module: `Persistable`<br />

## Persistable.Error

Extracts the error value type from a persistable request.

**Signature**

```ts
type Error<A> = A["~effect/persistence/Persistable"]["error"]["Type"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Persistable.ts#L85)

Since v4.0.0
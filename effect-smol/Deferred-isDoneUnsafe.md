Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.isDoneUnsafe

Returns whether this `Deferred` has already been completed synchronously.

**When to use**

Use to check `Deferred` completion synchronously in code that cannot return
an `Effect`, such as low-level integration code.

**See**

- `isDone` for checking completion inside `Effect`
- `poll` for reading the completed effect when available

**Signature**

```ts
declare const isDoneUnsafe: <A, E>(self: Deferred<A, E>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L758)

Since v4.0.0
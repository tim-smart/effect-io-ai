Package: `effect`<br />
Module: `Resource`<br />

## Resource.get

Retrieves the current value stored in this resource.

**When to use**

Use to read the value currently cached by a `Resource`.

**Gotchas**

If the resource currently stores a failed acquisition result, the returned
effect fails with the stored error.

**See**

- `refresh` to re-run acquisition and update the stored value before a later read

**Signature**

```ts
declare const get: <A, E>(self: Resource<A, E>) => Effect.Effect<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Resource.ts#L154)

Since v2.0.0
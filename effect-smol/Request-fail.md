Package: `effect`<br />
Module: `Request`<br />

## Request.fail

Completes a request entry with a typed failure.

**When to use**

Use to report a request-specific typed error while implementing a
`RequestResolver`.

**See**

- `failCause` for completing an entry with a full `Cause`
- `complete` for completing an entry with an existing `Exit`
- `completeEffect` for completing an entry from an effect result
- `succeed` for completing an entry successfully

**Signature**

```ts
declare const fail: { <A extends Any>(error: Error<A>): (self: Entry<A>) => Effect.Effect<void>; <A extends Any>(self: Entry<A>, error: Error<A>): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Request.ts#L490)

Since v2.0.0
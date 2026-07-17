Package: `effect`<br />
Module: `Request`<br />

## Request.completeEffect

Completes a request entry with the result of an effect.

**When to use**

Use to finish a `Request.Entry` by running an effect whose success or typed
failure should become the request result.

**Details**

If the effect succeeds, the entry is completed successfully with its value.
If the effect fails, the entry is completed with that failure.

**Gotchas**

The returned effect itself does not fail with the request error.

**See**

- `complete` for completing an entry with a prebuilt `Exit`
- `succeed` for completing an entry with a successful value
- `fail` for completing an entry with a typed failure
- `failCause` for completing an entry with a failure `Cause`

**Signature**

```ts
declare const completeEffect: { <A extends Any, R>(effect: Effect.Effect<Success<A>, Error<A>, R>): (self: Entry<A>) => Effect.Effect<void, never, R>; <A extends Any, R>(self: Entry<A>, effect: Effect.Effect<Success<A>, Error<A>, R>): Effect.Effect<void, never, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Request.ts#L462)

Since v2.0.0
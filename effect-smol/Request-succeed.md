Package: `effect`<br />
Module: `Request`<br />

## Request.succeed

Completes a request entry successfully with the supplied value.

**When to use**

Use to finish a `Request.Entry` when you have a successful value for the
request.

**See**

- `complete` for completing an entry with a prebuilt `Exit`
- `completeEffect` for completing an entry from an effect result
- `fail` for completing an entry with a typed failure
- `failCause` for completing an entry with a failure `Cause`

**Signature**

```ts
declare const succeed: { <A extends Any>(value: Success<A>): (self: Entry<A>) => Effect.Effect<void>; <A extends Any>(self: Entry<A>, value: Success<A>): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Request.ts#L574)

Since v2.0.0
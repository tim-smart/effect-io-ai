Package: `effect`<br />
Module: `Request`<br />

## Request.complete

Completes a request entry with the provided result.

**When to use**

Use to finish a `Request.Entry` when you already have the request's final
`Exit` result.

**See**

- `completeEffect` for completing an entry from an effect that may succeed or fail
- `succeed` for completing an entry with a successful value
- `fail` for completing an entry with a typed failure
- `failCause` for completing an entry with a failure `Cause`

**Signature**

```ts
declare const complete: { <A extends Any>(result: Result<A>): (self: Entry<A>) => Effect.Effect<void>; <A extends Any>(self: Entry<A>, result: Result<A>): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Request.ts#L463)

Since v2.0.0
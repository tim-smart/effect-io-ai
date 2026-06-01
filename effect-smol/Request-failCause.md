Package: `effect`<br />
Module: `Request`<br />

## Request.failCause

Completes a request entry with a failure `Cause`.

**When to use**

Use when you need a `RequestResolver` to complete an entry with structured
cause information rather than only the request's typed error value.

**See**

- `fail` for completing an entry with a typed error value
- `complete` for completing an entry with an existing `Exit`
- `completeEffect` for completing an entry from an effect result
- `succeed` for completing an entry successfully

**Signature**

```ts
declare const failCause: { <A extends Any>(cause: Cause.Cause<Error<A>>): (self: Entry<A>) => Effect.Effect<void>; <A extends Any>(self: Entry<A>, cause: Cause.Cause<Error<A>>): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Request.ts#L549)

Since v2.0.0
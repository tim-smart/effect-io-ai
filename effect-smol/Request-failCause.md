Package: `effect`<br />
Module: `Request`<br />

## Request.failCause

Completes a request entry with a failure `Cause`.

**Details**

Use this when the request should fail with structured cause information
rather than only the request's typed error value.

**Signature**

```ts
declare const failCause: { <A extends Any>(cause: Cause.Cause<Error<A>>): (self: Entry<A>) => Effect.Effect<void>; <A extends Any>(self: Entry<A>, cause: Cause.Cause<Error<A>>): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Request.ts#L469)

Since v2.0.0
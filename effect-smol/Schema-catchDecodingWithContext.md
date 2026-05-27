Package: `effect`<br />
Module: `Schema`<br />

## Schema.catchDecodingWithContext

Like `catchDecoding`, but the handler may require Effect services (`R`).

**When to use**

Use when decoding fallback logic needs services from the Effect context.

**Details**

The handler receives the `Issue` and returns an `Effect` that either succeeds
with a fallback value or re-fails with a (possibly different) issue. The
handler's services are added to the schema's decoding services.

**See**

- `catchDecoding` for recovery handlers that do not require services
- `middlewareDecoding` for intercepting or replacing the full decoding pipeline

**Signature**

```ts
declare const catchDecodingWithContext: <S extends Top, R = never>(f: (issue: Issue.Issue) => Effect.Effect<Option_.Option<S["Type"]>, Issue.Issue, R>) => (self: S) => middlewareDecoding<S, S["DecodingServices"] | R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4628)

Since v4.0.0
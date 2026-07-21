Package: `effect`<br />
Module: `Schema`<br />

## Schema.catchDecodingWithContext

Recovers from a decoding error with a handler that may require Effect services.

**When to use**

Use when you need decoding fallback logic to require services from the Effect
context.

**Details**

The handler receives the `Issue` and returns an `Effect` that either succeeds
with a fallback value or re-fails with a (possibly different) issue. The
handler's services are added to the schema's decoding services.

**See**

- `catchDecoding` for recovery handlers that do not require services
- `middlewareDecoding` for intercepting or replacing the full decoding pipeline

**Signature**

```ts
declare const catchDecodingWithContext: <S extends Constraint, R = never>(f: (issue: SchemaIssue.Issue) => Effect.Effect<Option_.Option<S["Type"]>, SchemaIssue.Issue, R>) => (self: S) => middlewareDecoding<S, S["DecodingServices"] | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L5321)

Since v4.0.0
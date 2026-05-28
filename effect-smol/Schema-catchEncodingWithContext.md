Package: `effect`<br />
Module: `Schema`<br />

## Schema.catchEncodingWithContext

Recovers from an encoding error with a handler that may require Effect services.

**When to use**

Use when encoding fallback logic needs services from the Effect context.

**Details**

The handler receives the `Issue` and returns an `Effect` that either succeeds
with a fallback encoded value or re-fails with a (possibly different) issue.
The handler's services are added to the schema's encoding services.

**See**

- `catchEncoding` for recovery handlers that do not require services
- `middlewareEncoding` for intercepting or replacing the full encoding pipeline

**Signature**

```ts
declare const catchEncodingWithContext: <S extends Top, R = never>(f: (issue: Issue.Issue) => Effect.Effect<Option_.Option<S["Encoded"]>, Issue.Issue, R>) => (self: S) => middlewareEncoding<S, S["EncodingServices"] | R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4781)

Since v4.0.0
Package: `effect`<br />
Module: `AiError`<br />

## AiError.HttpContext

Combined HTTP context for error reporting.

**Signature**

```ts
declare const HttpContext: Schema.Struct<{ readonly request: Schema.Struct<{ readonly method: Schema.Literals<readonly ["GET", "POST", "PATCH", "PUT", "DELETE", "HEAD", "OPTIONS", "TRACE"]>; readonly url: Schema.String; readonly urlParams: Schema.$Array<Schema.Tuple<readonly [Schema.String, Schema.String]>>; readonly hash: Schema.UndefinedOr<Schema.String>; readonly headers: Schema.$Record<Schema.String, Schema.Union<readonly [Schema.String, Schema.Redacted<Schema.String>]>>; }>; readonly response: Schema.optional<Schema.Struct<{ readonly status: Schema.Number; readonly headers: Schema.$Record<Schema.String, Schema.Union<readonly [Schema.String, Schema.Redacted<Schema.String>]>>; }>>; readonly body: Schema.optional<Schema.String>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L363)

Since v1.0.0
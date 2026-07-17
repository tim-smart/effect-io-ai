Package: `effect`<br />
Module: `Request`<br />

## Request.Any

Alias for any `Request`, regardless of its success, error, or service
requirements.

**When to use**

Use as a generic constraint for APIs that accept any request while preserving
each concrete request's success, error, and service types.

**See**

- `Request` for the request interface
- `Success` for extracting a request's success type
- `Error` for extracting a request's error type
- `Services` for extracting a request's service requirements
- `Result` for the exit type produced by completing a request

**Signature**

```ts
type Any = Request<any, any, any>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Request.ts#L69)

Since v4.0.0
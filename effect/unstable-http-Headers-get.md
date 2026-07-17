Package: `effect`<br />
Module: `Headers`<br />

## Headers.get

Gets a header value by name safely.

**Details**

The lookup lowercases the provided header name and returns `Option.none()` when absent.

**Signature**

```ts
declare const get: { (key: string): (self: Headers) => Option.Option<string>; (self: Headers, key: string): Option.Option<string>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Headers.ts#L249)

Since v4.0.0
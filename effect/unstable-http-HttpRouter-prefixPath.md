Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.prefixPath

Adds a path prefix to a route path.

**Details**

Trailing slashes are removed from the prefix; `/` becomes the prefix itself and
`*` becomes a wildcard route under the prefix.

**Signature**

```ts
declare const prefixPath: { (prefix: string): (self: string) => string; (self: string, prefix: string): string; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpRouter.ts#L699)

Since v4.0.0
## Unexpected

Error that occurs when an unexpected key or index is present.

**Signature**

```ts
declare class Unexpected { constructor(
    readonly actual: unknown,
    /**
     * @since 3.10.0
     */
    readonly message?: string
  ) }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ParseResult.ts#L75)

Since v3.10.0
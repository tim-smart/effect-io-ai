Package: `effect`<br />
Module: `ParseResult`<br />

## ParseResult.ArrayFormatterIssue

Represents an issue returned by the `ArrayFormatter` formatter.

**Signature**

```ts
export interface ArrayFormatterIssue {
  /**
   * The tag identifying the type of parse issue.
   */
  readonly _tag: ParseIssue["_tag"]

  /**
   * The path to the property where the issue occurred.
   */
  readonly path: ReadonlyArray<PropertyKey>

  /**
   * A descriptive message explaining the issue.
   */
  readonly message: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ParseResult.ts#L1952)

Since v3.10.0
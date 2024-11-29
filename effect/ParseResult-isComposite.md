# isComposite

Returns `true` if the value is a `Composite`.

To import and use `isComposite` from the "ParseResult" module:

ts
import \* as ParseResult from "effect/ParseResult"
// Can be accessed like this
ParseResult.isComposite
undefined

**Signature**

```ts
export declare const isComposite: (issue: ParseIssue) => issue is Extract<ParseIssue, { _tag: "Composite" }>
```

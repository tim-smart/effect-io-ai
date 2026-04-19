Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.Filter

Issue produced when a schema filter (refinement check) fails.

When to use:

- Inspect which filter rejected the value.
- Walk the inner `issue` for the specific validation failure.

Behaviour:

- `actual` is the raw input value that was tested (plain `unknown`, not
  wrapped in `Option`).
- `filter` is the AST filter node that produced this issue.
- `issue` is the inner issue describing the failure reason.

**Example** (Matching a Filter issue)

```ts
import { SchemaIssue } from "effect"

function describe(issue: SchemaIssue.Issue): string {
  if (issue._tag === "Filter") {
    return `Filter failed on: ${JSON.stringify(issue.actual)}`
  }
  return String(issue)
}
```

**See**

- `Leaf` — terminal issue types that commonly appear as the inner `issue`
- `CheckHook` — formatter hook for `Filter` issues

**Signature**

```ts
declare class Filter { constructor(
    /**
     * The input value that caused the issue.
     */
    actual: unknown,
    /**
     * The filter that failed.
     */
    filter: AST.Filter<any>,
    /**
     * The issue that occurred.
     */
    issue: Issue
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L225)

Since v4.0.0
Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.ModelPreferences

Schema for the server's model selection preferences requested of the client
during sampling.

**Details**

Because LLMs can vary along multiple dimensions, choosing the "best" model is
rarely straightforward. Different models excel in different areas, some are
faster but less capable, others are more capable but more expensive, and so
on. This interface allows servers to express their priorities across multiple
dimensions to help clients make an appropriate selection for their use case.

**Gotchas**

These preferences are always advisory. The client MAY ignore them. It is also
up to the client to decide how to interpret these preferences and how to
balance them against other considerations.

**Signature**

```ts
declare class ModelPreferences
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L1735)

Since v4.0.0
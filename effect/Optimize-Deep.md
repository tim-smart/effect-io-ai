Package: `@effect/printer`<br />
Module: `Optimize`<br />

## Optimize.Deep

Instructs the document fusion optimizer to recurse into all leaves of the
document tree, including different layout alternatives and all
location-sensitive values (i.e. those created by `nesting`), which cannot be
fused before, but only during, the layout process. As a result, the
performance cost of using deep document fusion optimization is often hard to
predict and depends on the interplay between page layout and the document
that is to be pretty printed.

This value should only be utilized if profiling demonstrates that it is
**significantly** faster than using `Shallow`.

**Signature**

```ts
export interface Deep {
  readonly _tag: "Deep"
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Optimize.ts#L68)

Since v1.0.0
Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.ToService

Derives the group implementation service required for each group in an HTTP
API.

**Details**

When given an API id and a group or union of groups, this type maps each group
to the `Service` identity that must be provided by `HttpApiBuilder.group`.

**Signature**

```ts
type ToService<ApiId, Group> = Group extends Constraint ?
  Service<ApiId, Group["identifier"]>
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiGroup.ts#L160)

Since v4.0.0
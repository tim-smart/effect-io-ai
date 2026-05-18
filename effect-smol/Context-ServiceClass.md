Package: `effect`<br />
Module: `Context`<br />

## Context.ServiceClass

Class-style service key produced by `Context.Service<Self, Shape>()("Id")`.

**Details**

Use this shape when declaring services as classes. The class itself is the
Context key, and its string `key` identifies the service at runtime.

**Signature**

```ts
export interface ServiceClass<in out Self, in out Identifier extends string, in out Shape>
  extends Service<Self, Shape>
{
  new(_: never): ServiceClass.Shape<Identifier, Shape>
  readonly key: Identifier
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L109)

Since v4.0.0
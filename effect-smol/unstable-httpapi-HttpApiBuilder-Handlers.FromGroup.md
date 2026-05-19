Package: `effect`<br />
Module: `HttpApiBuilder`<br />

## HttpApiBuilder.Handlers.FromGroup

Creates a handler collection for a group where every endpoint in the group is
still awaiting an implementation.

**Signature**

```ts
type FromGroup<Group> = Handlers<
    never,
    HttpApiGroup.Endpoints<Group>
  >
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiBuilder.ts#L286)

Since v4.0.0
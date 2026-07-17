Package: `effect`<br />
Module: `Cookies`<br />

## Cookies.Cookies

Immutable collection of HTTP cookies keyed by cookie name.

**Signature**

```ts
export interface Cookies extends Pipeable, Inspectable.Inspectable {
  readonly [TypeId]: typeof TypeId
  readonly cookies: Record.ReadonlyRecord<string, Cookie>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cookies.ts#L41)

Since v4.0.0
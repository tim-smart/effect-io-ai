Package: `effect`<br />
Module: `UndefinedOr`<br />

## UndefinedOr.getOrThrowWith

Returns the defined value, or throws the value produced by `onUndefined`
when the input is `undefined`.

**When to use**

Use when fail-fast unwrapping of an `A | undefined` value is appropriate and
callers need to provide the thrown error for the undefined case.

**Details**

Defined values are returned unchanged. When the input is `undefined`,
`onUndefined` is called and its result is thrown.

**See**

- `getOrThrow` for the default-error sibling
- `match` for handling defined and undefined cases without throwing

**Signature**

```ts
declare const getOrThrowWith: { (onUndefined: () => unknown): <A>(self: A | undefined) => A; <A>(self: A | undefined, onUndefined: () => unknown): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UndefinedOr.ts#L135)

Since v4.0.0
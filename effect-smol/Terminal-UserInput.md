Package: `effect`<br />
Module: `Terminal`<br />

## Terminal.UserInput

A terminal input event containing an optional raw character and the parsed
key that was pressed.

**When to use**

Use when consuming low-level terminal input events from `Terminal.readInput`
and you need both raw character input and parsed key metadata.

**See**

- `Key` for the parsed key metadata stored on each input event

**Signature**

```ts
export interface UserInput {
  /**
   * The character read from the user (if any).
   */
  readonly input: Option.Option<string>
  /**
   * The key that the user pressed.
   */
  readonly key: Key
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Terminal.ts#L97)

Since v4.0.0
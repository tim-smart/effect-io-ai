Package: `effect`<br />
Module: `Terminal`<br />

## Terminal.Key

Keyboard key metadata for terminal input, including the key name and
modifier state.

**Signature**

```ts
export interface Key {
  /**
   * The name of the key being pressed.
   */
  readonly name: string
  /**
   * If set to `true`, then the user is also holding down the `Ctrl` key.
   */
  readonly ctrl: boolean
  /**
   * If set to `true`, then the user is also holding down the `Meta` key.
   */
  readonly meta: boolean
  /**
   * If set to `true`, then the user is also holding down the `Shift` key.
   */
  readonly shift: boolean
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Terminal.ts#L72)

Since v4.0.0
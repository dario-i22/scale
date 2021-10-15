import { Meta, Story, ArgsTable, Canvas } from '@storybook/addon-docs/blocks';
import ScaleToggleGroup from './ScaleToggleGroup.vue';

<Meta
  title="Beta Components/Toggle Group"
  component={ScaleToggleGroup}
  argTypes={{
    variant: {
      control: { type: 'select', options: ['primary', 'secondary'] },
    },
    size: {
      control: { type: 'select', options: ['xs', 'small', 'regular', 'large'] },
    },
	  boxType: {
      control: { type: 'select', options: ['inline', 'block'] },
    },
    ariaLabelTranslation: {
      control: { type: "text", },
    },
  }}
/>

export const Template = (args, { argTypes }) => ({
  components: { ScaleToggleGroup },
  props: {
    label: String,
    icon: String,
    ...ScaleToggleGroup.props,
  },
  template: `
  <scale-toggle-group
    :size="size"
    :variant="variant"
	  :box-type="boxType"
    :disabled="disabled"
    :border="border"
    :multi="multi"
    :aria-label-translation="ariaLabelTranslation"
    :styles="styles"
  >
    <scale-toggle-button>Label</scale-toggle-button>
    <scale-toggle-button>Label</scale-toggle-button>
    <scale-toggle-button selected>Label</scale-toggle-button>
  </scale-toggle-group>
    `,
});

export const TemplateAriaTranslation = (args, { argTypes }) => ({
  components: { ScaleToggleGroup },
  props: {
    label: String,
    icon: String,
    ...ScaleToggleGroup.props,
  },
  template: `
  <scale-toggle-group
    :size="size"
    :variant="variant"
	  :box-type="boxType"
    :disabled="disabled"
    :border="border"
    :multi="multi"
    :aria-label-translation="ariaLabelTranslation"
    :styles="styles"
  >
    <scale-toggle-button 
      aria-label="Drück mich"
      aria-lang-selected="selektiert"
      aria-lang-deselected="deselektiert">Label
    </scale-toggle-button>
    <scale-toggle-button 
      aria-label="Drück mich"
      aria-lang-selected="selektiert"
      aria-lang-deselected="deselektiert">Label
    </scale-toggle-button>
    <scale-toggle-button 
      aria-label="Drück mich"
      aria-lang-selected="selektiert"
      aria-lang-deselected="deselektiert"
      selected
      >Label
    </scale-toggle-button>
  </scale-toggle-group>
    `,
});

<div
  style={{
    display: 'inline-flex',
    alignItems: 'center',
    justifyContent: 'space-between',
    width: '100%',
  }}
>
  <h1>Toggle Group</h1>
</div>

## Standard

<Canvas withSource="none">
  <Story
    name="Standard"
    args={{}}
  >
    {Template.bind({})}
  </Story>
</Canvas>

<ArgsTable story="Standard" />

```html
<scale-toggle-group>
	<scale-toggle-button>Label</scale-toggle-button>
    <scale-toggle-button>Label</scale-toggle-button>
    <scale-toggle-button selected>Label</scale-toggle-button>
</scale-toggle-group>
```

## Secondary

<Canvas withSource="none">
  <Story
    name="Secondary"
    args={{
		variant: 'secondary'
	}}
  >
    {Template.bind({})}
  </Story>
</Canvas>

```html
<scale-toggle-group variant='secondary'>
	<scale-toggle-button>Label</scale-toggle-button>
    <scale-toggle-button>Label</scale-toggle-button>
    <scale-toggle-button selected>Label</scale-toggle-button>
</scale-toggle-group>
```

## Disabled

<Canvas withSource="none">
  <Story
    name="Disabled"
    args={{
		disabled: true
	}}
  >
    {Template.bind({})}
  </Story>
</Canvas>

```html
<scale-toggle-group disabled>
	<scale-toggle-button>Label</scale-toggle-button>
    <scale-toggle-button>Label</scale-toggle-button>
    <scale-toggle-button>Label</scale-toggle-button>
</scale-toggle-group>
```

## Disabled Secondary

<Canvas withSource="none">
  <Story
    name="Disabled Secondary"
    args={{
		disabled: true,
		variant: 'secondary'
	}}
  >
    {Template.bind({})}
  </Story>
</Canvas>

```html
<scale-toggle-group variant='secondary' disabled>
	<scale-toggle-button>Label</scale-toggle-button>
    <scale-toggle-button>Label</scale-toggle-button>
    <scale-toggle-button>Label</scale-toggle-button>
</scale-toggle-group>
```

## Regular Size

<Canvas withSource="none">
  <Story
    name="Regular Size"
    args={{
		size: 'regular'
	}}
  >
    {Template.bind({})}
  </Story>
</Canvas>

```html
<scale-toggle-group size="regular">
	<scale-toggle-button>Label</scale-toggle-button>
    <scale-toggle-button>Label</scale-toggle-button>
    <scale-toggle-button>Label</scale-toggle-button>
</scale-toggle-group>
```

## Small Size Block

<Canvas withSource="none">
  <Story
    name="Small Size Block"
    args={{
		size: 'small',
		boxType: 'block'
	}}
  >
    {Template.bind({})}
  </Story>
</Canvas>

```html
<scale-toggle-group size="small" box-type="block">
	<scale-toggle-button>Label</scale-toggle-button>
    <scale-toggle-button>Label</scale-toggle-button>
    <scale-toggle-button>Label</scale-toggle-button>
</scale-toggle-group>
```

## XS Size Block

<Canvas withSource="none">
  <Story
    name="XS Size Block"
    args={{
		size: 'xs',
		boxType: 'block'
	}}
  >
    {Template.bind({})}
  </Story>
</Canvas>

```html
<scale-toggle-group size="xs" box-type="block">
	<scale-toggle-button>Label</scale-toggle-button>
    <scale-toggle-button>Label</scale-toggle-button>
    <scale-toggle-button>Label</scale-toggle-button>
</scale-toggle-group>
```

## Border

<Canvas withSource="none">
  <Story
    name="Border"
    args={{
		border: true
	}}
  >
    {Template.bind({})}
  </Story>
</Canvas>

```html
<scale-toggle-group border>
	<scale-toggle-button>Label</scale-toggle-button>
    <scale-toggle-button>Label</scale-toggle-button>
    <scale-toggle-button selected>Label</scale-toggle-button>
</scale-toggle-group>
```

## Border, Disabled, Secondary, Regular

<Canvas withSource="none">
  <Story
    name="Border, Disabled, Secondary, Regular"
    args={{
		border: true,
		disabled: true,
		variant: 'secondary',
		size: 'regular'
	}}
  >
    {Template.bind({})}
  </Story>
</Canvas>

```html
<scale-toggle-group border disabled variant="secondary" size="regular">
	<scale-toggle-button>Label</scale-toggle-button>
    <scale-toggle-button>Label</scale-toggle-button>
    <scale-toggle-button selected>Label</scale-toggle-button>
</scale-toggle-group>
```

## non-Multi

<Canvas withSource="none">
  <Story
    name="non-Multi"
    args={{
		multi: false
	}}
  >
    {Template.bind({})}
  </Story>
</Canvas>

```html
<scale-toggle-group multi="false">
	<scale-toggle-button>Label</scale-toggle-button>
    <scale-toggle-button>Label</scale-toggle-button>
    <scale-toggle-button selected>Label</scale-toggle-button>
</scale-toggle-group>
```

## Accessibility, German

<Canvas withSource="none">
  <Story
    name="Accessibility, German"
    args={{
      ariaLabelTranslation: "wechsel schalter gruppe mit $slottedButtons schaltern"
    }}
  >
    {TemplateAriaTranslation.bind({})}
  </Story>
</Canvas>

```html
<scale-toggle-group aria-label-translation="wechsel schalter gruppe mit $slottedButtons schaltern">
  <scale-toggle-button 
    aria-label="Drück mich"
    aria-lang-selected="selektiert"
    aria-lang-deselected="deselektiert">Label
  </scale-toggle-button>
  <scale-toggle-button 
    aria-label="Drück mich"
    aria-lang-selected="selektiert"
    aria-lang-deselected="deselektiert">Label
  </scale-toggle-button>
  <scale-toggle-button 
    aria-label="Drück mich"
    aria-lang-selected="selektiert"
    aria-lang-deselected="deselektiert"
    selected
    >Label
  </scale-toggle-button>
</scale-toggle-group>
```
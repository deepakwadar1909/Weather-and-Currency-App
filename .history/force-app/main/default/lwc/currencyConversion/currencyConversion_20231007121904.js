import { LightningElement } from 'lwc';

export default class CurrencyConversion extends LightningElement {
    sourceCurrency = 'USD';
    targetCurrency = 'INR';

    get options(){
        return [
            { label: 'US Dollar', value: 'USD' },
            { label: 'Great Britian Pound', value: 'GBP' },
            { label: 'Indian Rupee', value: 'INR' },
            { label: 'Afghan', value: 'AFN' },
            { label: 'Australian', value: 'AUD' },
            { label: 'Bangladeshi', value: 'BDT' },
            { label: 'Chinese', value: 'CNY' },
            { label: 'Hong Kong', value: 'HKD' },
            { label: 'Indonesian', value: 'IDR' },
            { label: 'Japanese', value: 'JPY' },
            { label: 'Nepalese', value: 'NPR' },
            { label: 'New Zealand', value: 'NZD' },
            { label: 'Pakistani', value: 'PKR' },
            { label: 'Singapore', value: 'SGD' },
            { label: 'South Korean', value: 'KRW' },
            { label: 'Sri Lankan', value: 'LKR' },
            { label: 'New Taiwan', value: 'TWD' },
            { label: 'Vietnamese', value: 'VND' }
        ];
    }

    sourceHandleChange(event){
        this.sourceCurrency
    }
}
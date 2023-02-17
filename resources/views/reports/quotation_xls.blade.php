    <table>
        <thead>
        <tr>
            <th>QuotationID</th>
            <th>ItemDescription</th>
            <th>QuotationItemID</th>
            <th>ItemAmount</th>
            <th>Quantity</th>
            <th>Margin</th>
            <th>CostPrice</th>
        </tr>
        </thead>
        <tbody>
        @foreach($data as $item)
            <tr>
                <td>{{ $item->quotation_id }}</td>
                <td>{{ $item->item }}</td>
                <td>{{ $item->id }}</td>
                <td>{{ $item->sale_price }}</td>
                <td>{{ $item->qty }}</td>
                <td>{{ $item->margin }}</td>
                <td>{{ $item->cost_price }}</td>
            </tr>
        @endforeach
        </tbody>
    </table>